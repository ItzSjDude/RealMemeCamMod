.class Lcom/oplus/camera/ui/menu/setting/b$4;
.super Ljava/lang/Object;
.source "BaseLocationPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/b;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/b;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/b$4;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b$4;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->k()V

    .line 418
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
