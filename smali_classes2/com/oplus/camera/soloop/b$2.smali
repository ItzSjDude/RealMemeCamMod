.class Lcom/oplus/camera/soloop/b$2;
.super Ljava/lang/Object;
.source "SoloopManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/soloop/b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/soloop/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/soloop/b;Z)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/oplus/camera/soloop/b$2;->b:Lcom/oplus/camera/soloop/b;

    iput-boolean p2, p0, Lcom/oplus/camera/soloop/b$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/oplus/camera/soloop/b$2;->b:Lcom/oplus/camera/soloop/b;

    iget-boolean p0, p0, Lcom/oplus/camera/soloop/b$2;->a:Z

    invoke-static {p1, p0}, Lcom/oplus/camera/soloop/b;->a(Lcom/oplus/camera/soloop/b;Z)V

    return-void
.end method
