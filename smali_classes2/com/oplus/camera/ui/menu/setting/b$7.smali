.class Lcom/oplus/camera/ui/menu/setting/b$7;
.super Ljava/lang/Object;
.source "BaseLocationPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/b;->a(Landroid/content/DialogInterface$OnClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/oplus/camera/ui/menu/setting/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/b;Landroid/app/Activity;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/b$7;->b:Lcom/oplus/camera/ui/menu/setting/b;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/b$7;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p1, p2, :cond_0

    .line 450
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b$7;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
