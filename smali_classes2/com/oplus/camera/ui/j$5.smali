.class Lcom/oplus/camera/ui/j$5;
.super Ljava/lang/Object;
.source "GalleryBottomMenuLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/j;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/j;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/j;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/oplus/camera/ui/j$5;->a:Lcom/oplus/camera/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 433
    iget-object p0, p0, Lcom/oplus/camera/ui/j$5;->a:Lcom/oplus/camera/ui/j;

    const/16 p2, 0x53

    const-string v0, "cancel"

    invoke-virtual {p0, p2, v0}, Lcom/oplus/camera/ui/j;->a(ILjava/lang/String;)V

    .line 434
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
