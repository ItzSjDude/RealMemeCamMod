.class Lcom/oplus/camera/ui/menu/setting/e$1;
.super Ljava/lang/Object;
.source "CameraCustomListPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/e;->a(Landroidx/appcompat/app/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/e;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/e$1;->a:Lcom/oplus/camera/ui/menu/setting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/e$1;->a:Lcom/oplus/camera/ui/menu/setting/e;

    invoke-static {v0, p2}, Lcom/oplus/camera/ui/menu/setting/e;->a(Lcom/oplus/camera/ui/menu/setting/e;I)I

    .line 66
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/e$1;->a:Lcom/oplus/camera/ui/menu/setting/e;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/e;->onClick(Landroid/content/DialogInterface;I)V

    .line 67
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
